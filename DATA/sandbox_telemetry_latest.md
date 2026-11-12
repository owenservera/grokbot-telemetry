# sandbox_telemetry_parse — 2026-11-12 23:47:35 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2377678 lines=5262
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5253 |
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
| `chromeBrowserPssKb` | {'int': 5253} |
| `chromeGpuPssKb` | {'int': 5253} |
| `chromeOtherPssKb` | {'int': 5253} |
| `chromeProcesses` | {'int': 5253} |
| `chromeProfiles` | {'int': 5253} |
| `chromeRendererMaxPssKb` | {'int': 5253} |
| `chromeRendererPssKb` | {'int': 5253} |
| `chromeRenderers` | {'int': 5253} |
| `chromeTabs` | {'int': 5253} |
| `chromeTabsProbedProfiles` | {'int': 5253} |
| `chromeUtilityPssKb` | {'int': 5253} |
| `desktopPssKb` | {'int': 5253} |
| `hostPssKb` | {'int': 5253} |
| `kind` | {'str': 5253} |
| `memAvailableKb` | {'int': 5253} |
| `memTotalKb` | {'int': 5253} |
| `otherPssKb` | {'int': 5253} |
| `processes` | {'int': 5253} |
| `pssFallbackProcesses` | {'int': 5253} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
