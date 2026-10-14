# sandbox_telemetry_parse — 2026-10-14 14:52:52 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=342986 lines=763
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 758 |
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
| `chromeBrowserPssKb` | {'int': 758} |
| `chromeGpuPssKb` | {'int': 758} |
| `chromeOtherPssKb` | {'int': 758} |
| `chromeProcesses` | {'int': 758} |
| `chromeProfiles` | {'int': 758} |
| `chromeRendererMaxPssKb` | {'int': 758} |
| `chromeRendererPssKb` | {'int': 758} |
| `chromeRenderers` | {'int': 758} |
| `chromeTabs` | {'int': 758} |
| `chromeTabsProbedProfiles` | {'int': 758} |
| `chromeUtilityPssKb` | {'int': 758} |
| `desktopPssKb` | {'int': 758} |
| `hostPssKb` | {'int': 758} |
| `kind` | {'str': 758} |
| `memAvailableKb` | {'int': 758} |
| `memTotalKb` | {'int': 758} |
| `otherPssKb` | {'int': 758} |
| `processes` | {'int': 758} |
| `pssFallbackProcesses` | {'int': 758} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
