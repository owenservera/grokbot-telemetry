# sandbox_telemetry_parse — 2026-11-20 06:19:40 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1599534 lines=3546
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3535 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3535} |
| `chromeGpuPssKb` | {'int': 3535} |
| `chromeOtherPssKb` | {'int': 3535} |
| `chromeProcesses` | {'int': 3535} |
| `chromeProfiles` | {'int': 3535} |
| `chromeRendererMaxPssKb` | {'int': 3535} |
| `chromeRendererPssKb` | {'int': 3535} |
| `chromeRenderers` | {'int': 3535} |
| `chromeTabs` | {'int': 3535} |
| `chromeTabsProbedProfiles` | {'int': 3535} |
| `chromeUtilityPssKb` | {'int': 3535} |
| `desktopPssKb` | {'int': 3535} |
| `hostPssKb` | {'int': 3535} |
| `kind` | {'str': 3535} |
| `memAvailableKb` | {'int': 3535} |
| `memTotalKb` | {'int': 3535} |
| `otherPssKb` | {'int': 3535} |
| `processes` | {'int': 3535} |
| `pssFallbackProcesses` | {'int': 3535} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
