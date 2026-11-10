# sandbox_telemetry_parse — 2026-11-10 14:29:41 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1181087 lines=2618
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2609 |
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
| `chromeBrowserPssKb` | {'int': 2609} |
| `chromeGpuPssKb` | {'int': 2609} |
| `chromeOtherPssKb` | {'int': 2609} |
| `chromeProcesses` | {'int': 2609} |
| `chromeProfiles` | {'int': 2609} |
| `chromeRendererMaxPssKb` | {'int': 2609} |
| `chromeRendererPssKb` | {'int': 2609} |
| `chromeRenderers` | {'int': 2609} |
| `chromeTabs` | {'int': 2609} |
| `chromeTabsProbedProfiles` | {'int': 2609} |
| `chromeUtilityPssKb` | {'int': 2609} |
| `desktopPssKb` | {'int': 2609} |
| `hostPssKb` | {'int': 2609} |
| `kind` | {'str': 2609} |
| `memAvailableKb` | {'int': 2609} |
| `memTotalKb` | {'int': 2609} |
| `otherPssKb` | {'int': 2609} |
| `processes` | {'int': 2609} |
| `pssFallbackProcesses` | {'int': 2609} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
