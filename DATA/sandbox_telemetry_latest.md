# sandbox_telemetry_parse — 2026-11-17 02:01:54 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=204068 lines=457
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 450 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 450} |
| `chromeGpuPssKb` | {'int': 450} |
| `chromeOtherPssKb` | {'int': 450} |
| `chromeProcesses` | {'int': 450} |
| `chromeProfiles` | {'int': 450} |
| `chromeRendererMaxPssKb` | {'int': 450} |
| `chromeRendererPssKb` | {'int': 450} |
| `chromeRenderers` | {'int': 450} |
| `chromeTabs` | {'int': 450} |
| `chromeTabsProbedProfiles` | {'int': 450} |
| `chromeUtilityPssKb` | {'int': 450} |
| `desktopPssKb` | {'int': 450} |
| `hostPssKb` | {'int': 450} |
| `kind` | {'str': 450} |
| `memAvailableKb` | {'int': 450} |
| `memTotalKb` | {'int': 450} |
| `otherPssKb` | {'int': 450} |
| `processes` | {'int': 450} |
| `pssFallbackProcesses` | {'int': 450} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
