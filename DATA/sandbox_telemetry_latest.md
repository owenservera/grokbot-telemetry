# sandbox_telemetry_parse — 2026-10-13 01:09:05 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=744099 lines=1697
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1614 |
| `chrome_profile_sample` | 75 |
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
| `chromeBrowserPssKb` | {'int': 1614} |
| `chromeGpuPssKb` | {'int': 1614} |
| `chromeOtherPssKb` | {'int': 1614} |
| `chromeProcesses` | {'int': 1614} |
| `chromeProfiles` | {'int': 1614} |
| `chromeRendererMaxPssKb` | {'int': 1614} |
| `chromeRendererPssKb` | {'int': 1614} |
| `chromeRenderers` | {'int': 1614} |
| `chromeTabs` | {'int': 1614} |
| `chromeTabsProbedProfiles` | {'int': 1614} |
| `chromeUtilityPssKb` | {'int': 1614} |
| `desktopPssKb` | {'int': 1614} |
| `hostPssKb` | {'int': 1614} |
| `kind` | {'str': 1614} |
| `memAvailableKb` | {'int': 1614} |
| `memTotalKb` | {'int': 1614} |
| `otherPssKb` | {'int': 1614} |
| `processes` | {'int': 1614} |
| `pssFallbackProcesses` | {'int': 1614} |

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
| `cpuMillicores` | {'int': 74} |
| `display` | {'int': 75} |
| `kind` | {'str': 75} |
| `processes` | {'int': 75} |
| `pssKb` | {'int': 75} |
| `rendererMaxPssKb` | {'int': 75} |
| `renderers` | {'int': 75} |
| `tabs` | {'int': 75} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
