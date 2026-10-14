# sandbox_telemetry_parse — 2026-10-14 02:29:45 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=47378 lines=109
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 104 |
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
| `chromeBrowserPssKb` | {'int': 104} |
| `chromeGpuPssKb` | {'int': 104} |
| `chromeOtherPssKb` | {'int': 104} |
| `chromeProcesses` | {'int': 104} |
| `chromeProfiles` | {'int': 104} |
| `chromeRendererMaxPssKb` | {'int': 104} |
| `chromeRendererPssKb` | {'int': 104} |
| `chromeRenderers` | {'int': 104} |
| `chromeTabs` | {'int': 104} |
| `chromeTabsProbedProfiles` | {'int': 104} |
| `chromeUtilityPssKb` | {'int': 104} |
| `desktopPssKb` | {'int': 104} |
| `hostPssKb` | {'int': 104} |
| `kind` | {'str': 104} |
| `memAvailableKb` | {'int': 104} |
| `memTotalKb` | {'int': 104} |
| `otherPssKb` | {'int': 104} |
| `processes` | {'int': 104} |
| `pssFallbackProcesses` | {'int': 104} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
