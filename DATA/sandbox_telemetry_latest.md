# sandbox_telemetry_parse — 2026-10-06 15:51:28 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=459842 lines=1013
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1008 |
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
| `chromeBrowserPssKb` | {'int': 1008} |
| `chromeGpuPssKb` | {'int': 1008} |
| `chromeOtherPssKb` | {'int': 1008} |
| `chromeProcesses` | {'int': 1008} |
| `chromeProfiles` | {'int': 1008} |
| `chromeRendererMaxPssKb` | {'int': 1008} |
| `chromeRendererPssKb` | {'int': 1008} |
| `chromeRenderers` | {'int': 1008} |
| `chromeTabs` | {'int': 1008} |
| `chromeTabsProbedProfiles` | {'int': 1008} |
| `chromeUtilityPssKb` | {'int': 1008} |
| `desktopPssKb` | {'int': 1008} |
| `hostPssKb` | {'int': 1008} |
| `kind` | {'str': 1008} |
| `memAvailableKb` | {'int': 1008} |
| `memTotalKb` | {'int': 1008} |
| `otherPssKb` | {'int': 1008} |
| `processes` | {'int': 1008} |
| `pssFallbackProcesses` | {'int': 1008} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
