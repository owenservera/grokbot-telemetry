# sandbox_telemetry_parse — 2026-11-24 01:53:06 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2081672 lines=4615
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4600 |
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
| `chromeBrowserPssKb` | {'int': 4600} |
| `chromeGpuPssKb` | {'int': 4600} |
| `chromeOtherPssKb` | {'int': 4600} |
| `chromeProcesses` | {'int': 4600} |
| `chromeProfiles` | {'int': 4600} |
| `chromeRendererMaxPssKb` | {'int': 4600} |
| `chromeRendererPssKb` | {'int': 4600} |
| `chromeRenderers` | {'int': 4600} |
| `chromeTabs` | {'int': 4600} |
| `chromeTabsProbedProfiles` | {'int': 4600} |
| `chromeUtilityPssKb` | {'int': 4600} |
| `desktopPssKb` | {'int': 4600} |
| `hostPssKb` | {'int': 4600} |
| `kind` | {'str': 4600} |
| `memAvailableKb` | {'int': 4600} |
| `memTotalKb` | {'int': 4600} |
| `otherPssKb` | {'int': 4600} |
| `processes` | {'int': 4600} |
| `pssFallbackProcesses` | {'int': 4600} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
