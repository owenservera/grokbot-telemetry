# sandbox_telemetry_parse — 2026-10-14 02:39:45 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=51446 lines=118
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 113 |
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
| `chromeBrowserPssKb` | {'int': 113} |
| `chromeGpuPssKb` | {'int': 113} |
| `chromeOtherPssKb` | {'int': 113} |
| `chromeProcesses` | {'int': 113} |
| `chromeProfiles` | {'int': 113} |
| `chromeRendererMaxPssKb` | {'int': 113} |
| `chromeRendererPssKb` | {'int': 113} |
| `chromeRenderers` | {'int': 113} |
| `chromeTabs` | {'int': 113} |
| `chromeTabsProbedProfiles` | {'int': 113} |
| `chromeUtilityPssKb` | {'int': 113} |
| `desktopPssKb` | {'int': 113} |
| `hostPssKb` | {'int': 113} |
| `kind` | {'str': 113} |
| `memAvailableKb` | {'int': 113} |
| `memTotalKb` | {'int': 113} |
| `otherPssKb` | {'int': 113} |
| `processes` | {'int': 113} |
| `pssFallbackProcesses` | {'int': 113} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
