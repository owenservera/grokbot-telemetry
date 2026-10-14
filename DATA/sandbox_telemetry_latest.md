# sandbox_telemetry_parse — 2026-10-14 11:31:48 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=261174 lines=582
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 577 |
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
| `chromeBrowserPssKb` | {'int': 577} |
| `chromeGpuPssKb` | {'int': 577} |
| `chromeOtherPssKb` | {'int': 577} |
| `chromeProcesses` | {'int': 577} |
| `chromeProfiles` | {'int': 577} |
| `chromeRendererMaxPssKb` | {'int': 577} |
| `chromeRendererPssKb` | {'int': 577} |
| `chromeRenderers` | {'int': 577} |
| `chromeTabs` | {'int': 577} |
| `chromeTabsProbedProfiles` | {'int': 577} |
| `chromeUtilityPssKb` | {'int': 577} |
| `desktopPssKb` | {'int': 577} |
| `hostPssKb` | {'int': 577} |
| `kind` | {'str': 577} |
| `memAvailableKb` | {'int': 577} |
| `memTotalKb` | {'int': 577} |
| `otherPssKb` | {'int': 577} |
| `processes` | {'int': 577} |
| `pssFallbackProcesses` | {'int': 577} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
