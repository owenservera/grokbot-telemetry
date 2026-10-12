# sandbox_telemetry_parse — 2026-10-13 00:31:46 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=721184 lines=1625
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1578 |
| `chrome_profile_sample` | 39 |
| `boot_stage` | 3 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `chrome_launch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 3} |
| `kind` | {'str': 3} |
| `stage` | {'str': 3} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

### `host_boot_fetch`

| key | types |
|-----|-------|
| `durationMs` | {'int': 1} |
| `fromVersion` | {'str': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |
| `reason` | {'str': 1} |
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 1578} |
| `chromeGpuPssKb` | {'int': 1578} |
| `chromeOtherPssKb` | {'int': 1578} |
| `chromeProcesses` | {'int': 1578} |
| `chromeProfiles` | {'int': 1578} |
| `chromeRendererMaxPssKb` | {'int': 1578} |
| `chromeRendererPssKb` | {'int': 1578} |
| `chromeRenderers` | {'int': 1578} |
| `chromeTabs` | {'int': 1578} |
| `chromeTabsProbedProfiles` | {'int': 1578} |
| `chromeUtilityPssKb` | {'int': 1578} |
| `desktopPssKb` | {'int': 1578} |
| `hostPssKb` | {'int': 1578} |
| `kind` | {'str': 1578} |
| `memAvailableKb` | {'int': 1578} |
| `memTotalKb` | {'int': 1578} |
| `otherPssKb` | {'int': 1578} |
| `processes` | {'int': 1578} |
| `pssFallbackProcesses` | {'int': 1578} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `display` | {'int': 1} |
| `durationMs` | {'int': 1} |
| `kind` | {'str': 1} |
| `launcher` | {'int': 1} |
| `launcherSource` | {'str': 1} |
| `mode` | {'str': 1} |
| `outcome` | {'str': 1} |

### `cookie_persist`

| key | types |
|-----|-------|
| `attempts` | {'int': 1} |
| `injected` | {'int': 1} |
| `kind` | {'str': 2} |
| `missingAfter` | {'int': 1} |
| `outcome` | {'str': 2} |
| `phase` | {'str': 2} |
| `seedCookies` | {'int': 2} **REDACT values** |

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 38} |
| `display` | {'int': 39} |
| `kind` | {'str': 39} |
| `processes` | {'int': 39} |
| `pssKb` | {'int': 39} |
| `rendererMaxPssKb` | {'int': 39} |
| `renderers` | {'int': 39} |
| `tabs` | {'int': 39} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
