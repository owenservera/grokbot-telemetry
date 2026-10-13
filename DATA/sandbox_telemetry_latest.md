# sandbox_telemetry_parse — 2026-10-13 07:12:30 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=909584 lines=2217
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1874 |
| `chrome_profile_sample` | 335 |
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
| `chromeBrowserPssKb` | {'int': 1874} |
| `chromeGpuPssKb` | {'int': 1874} |
| `chromeOtherPssKb` | {'int': 1874} |
| `chromeProcesses` | {'int': 1874} |
| `chromeProfiles` | {'int': 1874} |
| `chromeRendererMaxPssKb` | {'int': 1874} |
| `chromeRendererPssKb` | {'int': 1874} |
| `chromeRenderers` | {'int': 1874} |
| `chromeTabs` | {'int': 1874} |
| `chromeTabsProbedProfiles` | {'int': 1874} |
| `chromeUtilityPssKb` | {'int': 1874} |
| `desktopPssKb` | {'int': 1874} |
| `hostPssKb` | {'int': 1874} |
| `kind` | {'str': 1874} |
| `memAvailableKb` | {'int': 1874} |
| `memTotalKb` | {'int': 1874} |
| `otherPssKb` | {'int': 1874} |
| `processes` | {'int': 1874} |
| `pssFallbackProcesses` | {'int': 1874} |

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
| `cpuMillicores` | {'int': 334} |
| `display` | {'int': 335} |
| `kind` | {'str': 335} |
| `processes` | {'int': 335} |
| `pssKb` | {'int': 335} |
| `rendererMaxPssKb` | {'int': 335} |
| `renderers` | {'int': 335} |
| `tabs` | {'int': 335} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
