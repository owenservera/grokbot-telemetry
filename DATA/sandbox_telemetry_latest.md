# sandbox_telemetry_parse — 2026-11-09 23:33:20 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=886519 lines=1967
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1958 |
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
| `chromeBrowserPssKb` | {'int': 1958} |
| `chromeGpuPssKb` | {'int': 1958} |
| `chromeOtherPssKb` | {'int': 1958} |
| `chromeProcesses` | {'int': 1958} |
| `chromeProfiles` | {'int': 1958} |
| `chromeRendererMaxPssKb` | {'int': 1958} |
| `chromeRendererPssKb` | {'int': 1958} |
| `chromeRenderers` | {'int': 1958} |
| `chromeTabs` | {'int': 1958} |
| `chromeTabsProbedProfiles` | {'int': 1958} |
| `chromeUtilityPssKb` | {'int': 1958} |
| `desktopPssKb` | {'int': 1958} |
| `hostPssKb` | {'int': 1958} |
| `kind` | {'str': 1958} |
| `memAvailableKb` | {'int': 1958} |
| `memTotalKb` | {'int': 1958} |
| `otherPssKb` | {'int': 1958} |
| `processes` | {'int': 1958} |
| `pssFallbackProcesses` | {'int': 1958} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
