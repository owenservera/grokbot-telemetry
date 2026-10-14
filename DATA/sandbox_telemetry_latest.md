# sandbox_telemetry_parse — 2026-10-14 03:41:31 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=77210 lines=175
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 170 |
| `boot_stage` | 3 |
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
| `chromeBrowserPssKb` | {'int': 170} |
| `chromeGpuPssKb` | {'int': 170} |
| `chromeOtherPssKb` | {'int': 170} |
| `chromeProcesses` | {'int': 170} |
| `chromeProfiles` | {'int': 170} |
| `chromeRendererMaxPssKb` | {'int': 170} |
| `chromeRendererPssKb` | {'int': 170} |
| `chromeRenderers` | {'int': 170} |
| `chromeTabs` | {'int': 170} |
| `chromeTabsProbedProfiles` | {'int': 170} |
| `chromeUtilityPssKb` | {'int': 170} |
| `desktopPssKb` | {'int': 170} |
| `hostPssKb` | {'int': 170} |
| `kind` | {'str': 170} |
| `memAvailableKb` | {'int': 170} |
| `memTotalKb` | {'int': 170} |
| `otherPssKb` | {'int': 170} |
| `processes` | {'int': 170} |
| `pssFallbackProcesses` | {'int': 170} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
