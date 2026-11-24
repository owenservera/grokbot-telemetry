# sandbox_telemetry_parse — 2026-11-24 09:49:30 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2232704 lines=4949
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4934 |
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
| `chromeBrowserPssKb` | {'int': 4934} |
| `chromeGpuPssKb` | {'int': 4934} |
| `chromeOtherPssKb` | {'int': 4934} |
| `chromeProcesses` | {'int': 4934} |
| `chromeProfiles` | {'int': 4934} |
| `chromeRendererMaxPssKb` | {'int': 4934} |
| `chromeRendererPssKb` | {'int': 4934} |
| `chromeRenderers` | {'int': 4934} |
| `chromeTabs` | {'int': 4934} |
| `chromeTabsProbedProfiles` | {'int': 4934} |
| `chromeUtilityPssKb` | {'int': 4934} |
| `desktopPssKb` | {'int': 4934} |
| `hostPssKb` | {'int': 4934} |
| `kind` | {'str': 4934} |
| `memAvailableKb` | {'int': 4934} |
| `memTotalKb` | {'int': 4934} |
| `otherPssKb` | {'int': 4934} |
| `processes` | {'int': 4934} |
| `pssFallbackProcesses` | {'int': 4934} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
