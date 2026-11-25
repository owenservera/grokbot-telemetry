# sandbox_telemetry_parse — 2026-11-25 18:43:11 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2875000 lines=6369
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6354 |
| `egress_tunnel` | 11 |
| `boot_stage` | 3 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 6354} |
| `chromeGpuPssKb` | {'int': 6354} |
| `chromeOtherPssKb` | {'int': 6354} |
| `chromeProcesses` | {'int': 6354} |
| `chromeProfiles` | {'int': 6354} |
| `chromeRendererMaxPssKb` | {'int': 6354} |
| `chromeRendererPssKb` | {'int': 6354} |
| `chromeRenderers` | {'int': 6354} |
| `chromeTabs` | {'int': 6354} |
| `chromeTabsProbedProfiles` | {'int': 6354} |
| `chromeUtilityPssKb` | {'int': 6354} |
| `desktopPssKb` | {'int': 6354} |
| `hostPssKb` | {'int': 6354} |
| `kind` | {'str': 6354} |
| `memAvailableKb` | {'int': 6354} |
| `memTotalKb` | {'int': 6354} |
| `otherPssKb` | {'int': 6354} |
| `processes` | {'int': 6354} |
| `pssFallbackProcesses` | {'int': 6354} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
