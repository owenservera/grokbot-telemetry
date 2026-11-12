# sandbox_telemetry_parse — 2026-11-12 22:29:30 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2353707 lines=5209
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5200 |
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
| `chromeBrowserPssKb` | {'int': 5200} |
| `chromeGpuPssKb` | {'int': 5200} |
| `chromeOtherPssKb` | {'int': 5200} |
| `chromeProcesses` | {'int': 5200} |
| `chromeProfiles` | {'int': 5200} |
| `chromeRendererMaxPssKb` | {'int': 5200} |
| `chromeRendererPssKb` | {'int': 5200} |
| `chromeRenderers` | {'int': 5200} |
| `chromeTabs` | {'int': 5200} |
| `chromeTabsProbedProfiles` | {'int': 5200} |
| `chromeUtilityPssKb` | {'int': 5200} |
| `desktopPssKb` | {'int': 5200} |
| `hostPssKb` | {'int': 5200} |
| `kind` | {'str': 5200} |
| `memAvailableKb` | {'int': 5200} |
| `memTotalKb` | {'int': 5200} |
| `otherPssKb` | {'int': 5200} |
| `processes` | {'int': 5200} |
| `pssFallbackProcesses` | {'int': 5200} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
