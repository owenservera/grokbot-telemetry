# sandbox_telemetry_parse — 2026-10-13 01:43:20 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=765733 lines=1765
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1648 |
| `chrome_profile_sample` | 109 |
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
| `chromeBrowserPssKb` | {'int': 1648} |
| `chromeGpuPssKb` | {'int': 1648} |
| `chromeOtherPssKb` | {'int': 1648} |
| `chromeProcesses` | {'int': 1648} |
| `chromeProfiles` | {'int': 1648} |
| `chromeRendererMaxPssKb` | {'int': 1648} |
| `chromeRendererPssKb` | {'int': 1648} |
| `chromeRenderers` | {'int': 1648} |
| `chromeTabs` | {'int': 1648} |
| `chromeTabsProbedProfiles` | {'int': 1648} |
| `chromeUtilityPssKb` | {'int': 1648} |
| `desktopPssKb` | {'int': 1648} |
| `hostPssKb` | {'int': 1648} |
| `kind` | {'str': 1648} |
| `memAvailableKb` | {'int': 1648} |
| `memTotalKb` | {'int': 1648} |
| `otherPssKb` | {'int': 1648} |
| `processes` | {'int': 1648} |
| `pssFallbackProcesses` | {'int': 1648} |

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
| `cpuMillicores` | {'int': 108} |
| `display` | {'int': 109} |
| `kind` | {'str': 109} |
| `processes` | {'int': 109} |
| `pssKb` | {'int': 109} |
| `rendererMaxPssKb` | {'int': 109} |
| `renderers` | {'int': 109} |
| `tabs` | {'int': 109} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
