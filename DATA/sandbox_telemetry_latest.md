# sandbox_telemetry_parse — 2026-10-14 14:53:55 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=343438 lines=764
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 759 |
| `boot_stage` | 3 |
| `egress_tunnel` | 1 |
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
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

### `host_boot_fetch`

| key | types |
|-----|-------|
| `durationMs` | {'int': 1} |
| `fromVersion` | {'str': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |
| `reason` | {'str': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 759} |
| `chromeGpuPssKb` | {'int': 759} |
| `chromeOtherPssKb` | {'int': 759} |
| `chromeProcesses` | {'int': 759} |
| `chromeProfiles` | {'int': 759} |
| `chromeRendererMaxPssKb` | {'int': 759} |
| `chromeRendererPssKb` | {'int': 759} |
| `chromeRenderers` | {'int': 759} |
| `chromeTabs` | {'int': 759} |
| `chromeTabsProbedProfiles` | {'int': 759} |
| `chromeUtilityPssKb` | {'int': 759} |
| `desktopPssKb` | {'int': 759} |
| `hostPssKb` | {'int': 759} |
| `kind` | {'str': 759} |
| `memAvailableKb` | {'int': 759} |
| `memTotalKb` | {'int': 759} |
| `otherPssKb` | {'int': 759} |
| `processes` | {'int': 759} |
| `pssFallbackProcesses` | {'int': 759} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
