# sandbox_telemetry_parse — 2026-10-13 01:52:34 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=770824 lines=1781
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1656 |
| `chrome_profile_sample` | 117 |
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
| `chromeBrowserPssKb` | {'int': 1656} |
| `chromeGpuPssKb` | {'int': 1656} |
| `chromeOtherPssKb` | {'int': 1656} |
| `chromeProcesses` | {'int': 1656} |
| `chromeProfiles` | {'int': 1656} |
| `chromeRendererMaxPssKb` | {'int': 1656} |
| `chromeRendererPssKb` | {'int': 1656} |
| `chromeRenderers` | {'int': 1656} |
| `chromeTabs` | {'int': 1656} |
| `chromeTabsProbedProfiles` | {'int': 1656} |
| `chromeUtilityPssKb` | {'int': 1656} |
| `desktopPssKb` | {'int': 1656} |
| `hostPssKb` | {'int': 1656} |
| `kind` | {'str': 1656} |
| `memAvailableKb` | {'int': 1656} |
| `memTotalKb` | {'int': 1656} |
| `otherPssKb` | {'int': 1656} |
| `processes` | {'int': 1656} |
| `pssFallbackProcesses` | {'int': 1656} |

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
| `cpuMillicores` | {'int': 116} |
| `display` | {'int': 117} |
| `kind` | {'str': 117} |
| `processes` | {'int': 117} |
| `pssKb` | {'int': 117} |
| `rendererMaxPssKb` | {'int': 117} |
| `renderers` | {'int': 117} |
| `tabs` | {'int': 117} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
