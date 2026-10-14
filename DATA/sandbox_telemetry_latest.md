# sandbox_telemetry_parse — 2026-10-14 02:56:00 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=58678 lines=134
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 129 |
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
| `chromeBrowserPssKb` | {'int': 129} |
| `chromeGpuPssKb` | {'int': 129} |
| `chromeOtherPssKb` | {'int': 129} |
| `chromeProcesses` | {'int': 129} |
| `chromeProfiles` | {'int': 129} |
| `chromeRendererMaxPssKb` | {'int': 129} |
| `chromeRendererPssKb` | {'int': 129} |
| `chromeRenderers` | {'int': 129} |
| `chromeTabs` | {'int': 129} |
| `chromeTabsProbedProfiles` | {'int': 129} |
| `chromeUtilityPssKb` | {'int': 129} |
| `desktopPssKb` | {'int': 129} |
| `hostPssKb` | {'int': 129} |
| `kind` | {'str': 129} |
| `memAvailableKb` | {'int': 129} |
| `memTotalKb` | {'int': 129} |
| `otherPssKb` | {'int': 129} |
| `processes` | {'int': 129} |
| `pssFallbackProcesses` | {'int': 129} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
