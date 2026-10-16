# sandbox_telemetry_parse — 2026-10-16 04:14:40 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=79926 lines=298
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 186 |
| `memory_sample` | 103 |
| `boot_stage` | 3 |
| `chrome_launch` | 2 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |

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
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 103} |
| `chromeGpuPssKb` | {'int': 103} |
| `chromeOtherPssKb` | {'int': 103} |
| `chromeProcesses` | {'int': 103} |
| `chromeProfiles` | {'int': 103} |
| `chromeRendererMaxPssKb` | {'int': 103} |
| `chromeRendererPssKb` | {'int': 103} |
| `chromeRenderers` | {'int': 103} |
| `chromeTabs` | {'int': 103} |
| `chromeTabsProbedProfiles` | {'int': 103} |
| `chromeUtilityPssKb` | {'int': 103} |
| `desktopPssKb` | {'int': 103} |
| `hostPssKb` | {'int': 103} |
| `kind` | {'str': 103} |
| `memAvailableKb` | {'int': 103} |
| `memTotalKb` | {'int': 103} |
| `otherPssKb` | {'int': 103} |
| `processes` | {'int': 103} |
| `pssFallbackProcesses` | {'int': 103} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 2} |
| `display` | {'int': 2} |
| `durationMs` | {'int': 2} |
| `kind` | {'str': 2} |
| `launcher` | {'int': 2} |
| `launcherSource` | {'str': 2} |
| `mode` | {'str': 2} |
| `outcome` | {'str': 2} |

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
| `cpuMillicores` | {'int': 183} |
| `display` | {'int': 186} |
| `kind` | {'str': 186} |
| `processes` | {'int': 186} |
| `pssKb` | {'int': 186} |
| `rendererMaxPssKb` | {'int': 186} |
| `renderers` | {'int': 186} |
| `tabs` | {'int': 185} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
