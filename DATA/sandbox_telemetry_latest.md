# sandbox_telemetry_parse — 2026-11-12 08:12:03 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2038134 lines=4512
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4503 |
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
| `chromeBrowserPssKb` | {'int': 4503} |
| `chromeGpuPssKb` | {'int': 4503} |
| `chromeOtherPssKb` | {'int': 4503} |
| `chromeProcesses` | {'int': 4503} |
| `chromeProfiles` | {'int': 4503} |
| `chromeRendererMaxPssKb` | {'int': 4503} |
| `chromeRendererPssKb` | {'int': 4503} |
| `chromeRenderers` | {'int': 4503} |
| `chromeTabs` | {'int': 4503} |
| `chromeTabsProbedProfiles` | {'int': 4503} |
| `chromeUtilityPssKb` | {'int': 4503} |
| `desktopPssKb` | {'int': 4503} |
| `hostPssKb` | {'int': 4503} |
| `kind` | {'str': 4503} |
| `memAvailableKb` | {'int': 4503} |
| `memTotalKb` | {'int': 4503} |
| `otherPssKb` | {'int': 4503} |
| `processes` | {'int': 4503} |
| `pssFallbackProcesses` | {'int': 4503} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
