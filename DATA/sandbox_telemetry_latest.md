# sandbox_telemetry_parse — 2026-10-16 00:35:02 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1131726 lines=2508
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2503 |
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
| `chromeBrowserPssKb` | {'int': 2503} |
| `chromeGpuPssKb` | {'int': 2503} |
| `chromeOtherPssKb` | {'int': 2503} |
| `chromeProcesses` | {'int': 2503} |
| `chromeProfiles` | {'int': 2503} |
| `chromeRendererMaxPssKb` | {'int': 2503} |
| `chromeRendererPssKb` | {'int': 2503} |
| `chromeRenderers` | {'int': 2503} |
| `chromeTabs` | {'int': 2503} |
| `chromeTabsProbedProfiles` | {'int': 2503} |
| `chromeUtilityPssKb` | {'int': 2503} |
| `desktopPssKb` | {'int': 2503} |
| `hostPssKb` | {'int': 2503} |
| `kind` | {'str': 2503} |
| `memAvailableKb` | {'int': 2503} |
| `memTotalKb` | {'int': 2503} |
| `otherPssKb` | {'int': 2503} |
| `processes` | {'int': 2503} |
| `pssFallbackProcesses` | {'int': 2503} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
