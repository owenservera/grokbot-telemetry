# sandbox_telemetry_parse — 2026-10-27 06:21:32 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=367528 lines=816
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 811 |
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
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 811} |
| `chromeGpuPssKb` | {'int': 811} |
| `chromeOtherPssKb` | {'int': 811} |
| `chromeProcesses` | {'int': 811} |
| `chromeProfiles` | {'int': 811} |
| `chromeRendererMaxPssKb` | {'int': 811} |
| `chromeRendererPssKb` | {'int': 811} |
| `chromeRenderers` | {'int': 811} |
| `chromeTabs` | {'int': 811} |
| `chromeTabsProbedProfiles` | {'int': 811} |
| `chromeUtilityPssKb` | {'int': 811} |
| `desktopPssKb` | {'int': 811} |
| `hostPssKb` | {'int': 811} |
| `kind` | {'str': 811} |
| `memAvailableKb` | {'int': 811} |
| `memTotalKb` | {'int': 811} |
| `otherPssKb` | {'int': 811} |
| `processes` | {'int': 811} |
| `pssFallbackProcesses` | {'int': 811} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
