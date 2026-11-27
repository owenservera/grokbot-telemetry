# sandbox_telemetry_parse — 2026-11-27 01:08:59 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=168436 lines=379
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 371 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

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
| `chromeBrowserPssKb` | {'int': 371} |
| `chromeGpuPssKb` | {'int': 371} |
| `chromeOtherPssKb` | {'int': 371} |
| `chromeProcesses` | {'int': 371} |
| `chromeProfiles` | {'int': 371} |
| `chromeRendererMaxPssKb` | {'int': 371} |
| `chromeRendererPssKb` | {'int': 371} |
| `chromeRenderers` | {'int': 371} |
| `chromeTabs` | {'int': 371} |
| `chromeTabsProbedProfiles` | {'int': 371} |
| `chromeUtilityPssKb` | {'int': 371} |
| `desktopPssKb` | {'int': 371} |
| `hostPssKb` | {'int': 371} |
| `kind` | {'str': 371} |
| `memAvailableKb` | {'int': 371} |
| `memTotalKb` | {'int': 371} |
| `otherPssKb` | {'int': 371} |
| `processes` | {'int': 371} |
| `pssFallbackProcesses` | {'int': 371} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
