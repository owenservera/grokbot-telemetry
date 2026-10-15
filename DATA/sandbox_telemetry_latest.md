# sandbox_telemetry_parse — 2026-10-16 00:57:43 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1140314 lines=2527
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2522 |
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
| `chromeBrowserPssKb` | {'int': 2522} |
| `chromeGpuPssKb` | {'int': 2522} |
| `chromeOtherPssKb` | {'int': 2522} |
| `chromeProcesses` | {'int': 2522} |
| `chromeProfiles` | {'int': 2522} |
| `chromeRendererMaxPssKb` | {'int': 2522} |
| `chromeRendererPssKb` | {'int': 2522} |
| `chromeRenderers` | {'int': 2522} |
| `chromeTabs` | {'int': 2522} |
| `chromeTabsProbedProfiles` | {'int': 2522} |
| `chromeUtilityPssKb` | {'int': 2522} |
| `desktopPssKb` | {'int': 2522} |
| `hostPssKb` | {'int': 2522} |
| `kind` | {'str': 2522} |
| `memAvailableKb` | {'int': 2522} |
| `memTotalKb` | {'int': 2522} |
| `otherPssKb` | {'int': 2522} |
| `processes` | {'int': 2522} |
| `pssFallbackProcesses` | {'int': 2522} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
