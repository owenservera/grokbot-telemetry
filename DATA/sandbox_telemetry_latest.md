# sandbox_telemetry_parse — 2026-10-15 17:52:32 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=981210 lines=2175
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2170 |
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
| `chromeBrowserPssKb` | {'int': 2170} |
| `chromeGpuPssKb` | {'int': 2170} |
| `chromeOtherPssKb` | {'int': 2170} |
| `chromeProcesses` | {'int': 2170} |
| `chromeProfiles` | {'int': 2170} |
| `chromeRendererMaxPssKb` | {'int': 2170} |
| `chromeRendererPssKb` | {'int': 2170} |
| `chromeRenderers` | {'int': 2170} |
| `chromeTabs` | {'int': 2170} |
| `chromeTabsProbedProfiles` | {'int': 2170} |
| `chromeUtilityPssKb` | {'int': 2170} |
| `desktopPssKb` | {'int': 2170} |
| `hostPssKb` | {'int': 2170} |
| `kind` | {'str': 2170} |
| `memAvailableKb` | {'int': 2170} |
| `memTotalKb` | {'int': 2170} |
| `otherPssKb` | {'int': 2170} |
| `processes` | {'int': 2170} |
| `pssFallbackProcesses` | {'int': 2170} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
