# sandbox_telemetry_parse — 2026-10-14 02:19:31 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=42858 lines=99
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 94 |
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
| `chromeBrowserPssKb` | {'int': 94} |
| `chromeGpuPssKb` | {'int': 94} |
| `chromeOtherPssKb` | {'int': 94} |
| `chromeProcesses` | {'int': 94} |
| `chromeProfiles` | {'int': 94} |
| `chromeRendererMaxPssKb` | {'int': 94} |
| `chromeRendererPssKb` | {'int': 94} |
| `chromeRenderers` | {'int': 94} |
| `chromeTabs` | {'int': 94} |
| `chromeTabsProbedProfiles` | {'int': 94} |
| `chromeUtilityPssKb` | {'int': 94} |
| `desktopPssKb` | {'int': 94} |
| `hostPssKb` | {'int': 94} |
| `kind` | {'str': 94} |
| `memAvailableKb` | {'int': 94} |
| `memTotalKb` | {'int': 94} |
| `otherPssKb` | {'int': 94} |
| `processes` | {'int': 94} |
| `pssFallbackProcesses` | {'int': 94} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
