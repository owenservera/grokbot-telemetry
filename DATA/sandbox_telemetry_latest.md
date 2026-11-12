# sandbox_telemetry_parse — 2026-11-12 20:34:19 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2317520 lines=5129
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5120 |
| `egress_tunnel` | 5 |
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
| `attempt` | {'int': 5} |
| `exitStatus` | {'int': 2} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `runtimeS` | {'int': 2} |

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
| `chromeBrowserPssKb` | {'int': 5120} |
| `chromeGpuPssKb` | {'int': 5120} |
| `chromeOtherPssKb` | {'int': 5120} |
| `chromeProcesses` | {'int': 5120} |
| `chromeProfiles` | {'int': 5120} |
| `chromeRendererMaxPssKb` | {'int': 5120} |
| `chromeRendererPssKb` | {'int': 5120} |
| `chromeRenderers` | {'int': 5120} |
| `chromeTabs` | {'int': 5120} |
| `chromeTabsProbedProfiles` | {'int': 5120} |
| `chromeUtilityPssKb` | {'int': 5120} |
| `desktopPssKb` | {'int': 5120} |
| `hostPssKb` | {'int': 5120} |
| `kind` | {'str': 5120} |
| `memAvailableKb` | {'int': 5120} |
| `memTotalKb` | {'int': 5120} |
| `otherPssKb` | {'int': 5120} |
| `processes` | {'int': 5120} |
| `pssFallbackProcesses` | {'int': 5120} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
