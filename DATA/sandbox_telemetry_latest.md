# sandbox_telemetry_parse — 2026-10-14 02:29:38 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=46926 lines=108
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 103 |
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
| `chromeBrowserPssKb` | {'int': 103} |
| `chromeGpuPssKb` | {'int': 103} |
| `chromeOtherPssKb` | {'int': 103} |
| `chromeProcesses` | {'int': 103} |
| `chromeProfiles` | {'int': 103} |
| `chromeRendererMaxPssKb` | {'int': 103} |
| `chromeRendererPssKb` | {'int': 103} |
| `chromeRenderers` | {'int': 103} |
| `chromeTabs` | {'int': 103} |
| `chromeTabsProbedProfiles` | {'int': 103} |
| `chromeUtilityPssKb` | {'int': 103} |
| `desktopPssKb` | {'int': 103} |
| `hostPssKb` | {'int': 103} |
| `kind` | {'str': 103} |
| `memAvailableKb` | {'int': 103} |
| `memTotalKb` | {'int': 103} |
| `otherPssKb` | {'int': 103} |
| `processes` | {'int': 103} |
| `pssFallbackProcesses` | {'int': 103} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
