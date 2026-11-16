# sandbox_telemetry_parse — 2026-11-16 21:22:56 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=121759 lines=275
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 268 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 268} |
| `chromeGpuPssKb` | {'int': 268} |
| `chromeOtherPssKb` | {'int': 268} |
| `chromeProcesses` | {'int': 268} |
| `chromeProfiles` | {'int': 268} |
| `chromeRendererMaxPssKb` | {'int': 268} |
| `chromeRendererPssKb` | {'int': 268} |
| `chromeRenderers` | {'int': 268} |
| `chromeTabs` | {'int': 268} |
| `chromeTabsProbedProfiles` | {'int': 268} |
| `chromeUtilityPssKb` | {'int': 268} |
| `desktopPssKb` | {'int': 268} |
| `hostPssKb` | {'int': 268} |
| `kind` | {'str': 268} |
| `memAvailableKb` | {'int': 268} |
| `memTotalKb` | {'int': 268} |
| `otherPssKb` | {'int': 268} |
| `processes` | {'int': 268} |
| `pssFallbackProcesses` | {'int': 268} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
