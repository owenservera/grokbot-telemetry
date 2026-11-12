# sandbox_telemetry_parse — 2026-11-12 09:05:47 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2054432 lines=4548
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4539 |
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
| `chromeBrowserPssKb` | {'int': 4539} |
| `chromeGpuPssKb` | {'int': 4539} |
| `chromeOtherPssKb` | {'int': 4539} |
| `chromeProcesses` | {'int': 4539} |
| `chromeProfiles` | {'int': 4539} |
| `chromeRendererMaxPssKb` | {'int': 4539} |
| `chromeRendererPssKb` | {'int': 4539} |
| `chromeRenderers` | {'int': 4539} |
| `chromeTabs` | {'int': 4539} |
| `chromeTabsProbedProfiles` | {'int': 4539} |
| `chromeUtilityPssKb` | {'int': 4539} |
| `desktopPssKb` | {'int': 4539} |
| `hostPssKb` | {'int': 4539} |
| `kind` | {'str': 4539} |
| `memAvailableKb` | {'int': 4539} |
| `memTotalKb` | {'int': 4539} |
| `otherPssKb` | {'int': 4539} |
| `processes` | {'int': 4539} |
| `pssFallbackProcesses` | {'int': 4539} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
