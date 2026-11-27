# sandbox_telemetry_parse — 2026-11-27 06:13:07 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=275637 lines=616
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 608 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

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
| `chromeBrowserPssKb` | {'int': 608} |
| `chromeGpuPssKb` | {'int': 608} |
| `chromeOtherPssKb` | {'int': 608} |
| `chromeProcesses` | {'int': 608} |
| `chromeProfiles` | {'int': 608} |
| `chromeRendererMaxPssKb` | {'int': 608} |
| `chromeRendererPssKb` | {'int': 608} |
| `chromeRenderers` | {'int': 608} |
| `chromeTabs` | {'int': 608} |
| `chromeTabsProbedProfiles` | {'int': 608} |
| `chromeUtilityPssKb` | {'int': 608} |
| `desktopPssKb` | {'int': 608} |
| `hostPssKb` | {'int': 608} |
| `kind` | {'str': 608} |
| `memAvailableKb` | {'int': 608} |
| `memTotalKb` | {'int': 608} |
| `otherPssKb` | {'int': 608} |
| `processes` | {'int': 608} |
| `pssFallbackProcesses` | {'int': 608} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
