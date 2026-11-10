# sandbox_telemetry_parse — 2026-11-10 16:18:01 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1216384 lines=2696
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2687 |
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
| `chromeBrowserPssKb` | {'int': 2687} |
| `chromeGpuPssKb` | {'int': 2687} |
| `chromeOtherPssKb` | {'int': 2687} |
| `chromeProcesses` | {'int': 2687} |
| `chromeProfiles` | {'int': 2687} |
| `chromeRendererMaxPssKb` | {'int': 2687} |
| `chromeRendererPssKb` | {'int': 2687} |
| `chromeRenderers` | {'int': 2687} |
| `chromeTabs` | {'int': 2687} |
| `chromeTabsProbedProfiles` | {'int': 2687} |
| `chromeUtilityPssKb` | {'int': 2687} |
| `desktopPssKb` | {'int': 2687} |
| `hostPssKb` | {'int': 2687} |
| `kind` | {'str': 2687} |
| `memAvailableKb` | {'int': 2687} |
| `memTotalKb` | {'int': 2687} |
| `otherPssKb` | {'int': 2687} |
| `processes` | {'int': 2687} |
| `pssFallbackProcesses` | {'int': 2687} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
