# sandbox_telemetry_parse — 2026-10-15 02:53:03 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=626842 lines=1391
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1386 |
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
| `chromeBrowserPssKb` | {'int': 1386} |
| `chromeGpuPssKb` | {'int': 1386} |
| `chromeOtherPssKb` | {'int': 1386} |
| `chromeProcesses` | {'int': 1386} |
| `chromeProfiles` | {'int': 1386} |
| `chromeRendererMaxPssKb` | {'int': 1386} |
| `chromeRendererPssKb` | {'int': 1386} |
| `chromeRenderers` | {'int': 1386} |
| `chromeTabs` | {'int': 1386} |
| `chromeTabsProbedProfiles` | {'int': 1386} |
| `chromeUtilityPssKb` | {'int': 1386} |
| `desktopPssKb` | {'int': 1386} |
| `hostPssKb` | {'int': 1386} |
| `kind` | {'str': 1386} |
| `memAvailableKb` | {'int': 1386} |
| `memTotalKb` | {'int': 1386} |
| `otherPssKb` | {'int': 1386} |
| `processes` | {'int': 1386} |
| `pssFallbackProcesses` | {'int': 1386} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
