# sandbox_telemetry_parse — 2026-10-13 00:37:40 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=725004 lines=1637
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1584 |
| `chrome_profile_sample` | 45 |
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
| `chromeBrowserPssKb` | {'int': 1584} |
| `chromeGpuPssKb` | {'int': 1584} |
| `chromeOtherPssKb` | {'int': 1584} |
| `chromeProcesses` | {'int': 1584} |
| `chromeProfiles` | {'int': 1584} |
| `chromeRendererMaxPssKb` | {'int': 1584} |
| `chromeRendererPssKb` | {'int': 1584} |
| `chromeRenderers` | {'int': 1584} |
| `chromeTabs` | {'int': 1584} |
| `chromeTabsProbedProfiles` | {'int': 1584} |
| `chromeUtilityPssKb` | {'int': 1584} |
| `desktopPssKb` | {'int': 1584} |
| `hostPssKb` | {'int': 1584} |
| `kind` | {'str': 1584} |
| `memAvailableKb` | {'int': 1584} |
| `memTotalKb` | {'int': 1584} |
| `otherPssKb` | {'int': 1584} |
| `processes` | {'int': 1584} |
| `pssFallbackProcesses` | {'int': 1584} |

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
| `cpuMillicores` | {'int': 44} |
| `display` | {'int': 45} |
| `kind` | {'str': 45} |
| `processes` | {'int': 45} |
| `pssKb` | {'int': 45} |
| `rendererMaxPssKb` | {'int': 45} |
| `renderers` | {'int': 45} |
| `tabs` | {'int': 45} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
