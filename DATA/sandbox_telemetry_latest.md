# sandbox_telemetry_parse — 2026-11-25 17:48:59 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2858728 lines=6333
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6318 |
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
| `chromeBrowserPssKb` | {'int': 6318} |
| `chromeGpuPssKb` | {'int': 6318} |
| `chromeOtherPssKb` | {'int': 6318} |
| `chromeProcesses` | {'int': 6318} |
| `chromeProfiles` | {'int': 6318} |
| `chromeRendererMaxPssKb` | {'int': 6318} |
| `chromeRendererPssKb` | {'int': 6318} |
| `chromeRenderers` | {'int': 6318} |
| `chromeTabs` | {'int': 6318} |
| `chromeTabsProbedProfiles` | {'int': 6318} |
| `chromeUtilityPssKb` | {'int': 6318} |
| `desktopPssKb` | {'int': 6318} |
| `hostPssKb` | {'int': 6318} |
| `kind` | {'str': 6318} |
| `memAvailableKb` | {'int': 6318} |
| `memTotalKb` | {'int': 6318} |
| `otherPssKb` | {'int': 6318} |
| `processes` | {'int': 6318} |
| `pssFallbackProcesses` | {'int': 6318} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
