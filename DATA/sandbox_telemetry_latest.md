# sandbox_telemetry_parse — 2026-10-14 16:38:10 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=382310 lines=850
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 845 |
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
| `chromeBrowserPssKb` | {'int': 845} |
| `chromeGpuPssKb` | {'int': 845} |
| `chromeOtherPssKb` | {'int': 845} |
| `chromeProcesses` | {'int': 845} |
| `chromeProfiles` | {'int': 845} |
| `chromeRendererMaxPssKb` | {'int': 845} |
| `chromeRendererPssKb` | {'int': 845} |
| `chromeRenderers` | {'int': 845} |
| `chromeTabs` | {'int': 845} |
| `chromeTabsProbedProfiles` | {'int': 845} |
| `chromeUtilityPssKb` | {'int': 845} |
| `desktopPssKb` | {'int': 845} |
| `hostPssKb` | {'int': 845} |
| `kind` | {'str': 845} |
| `memAvailableKb` | {'int': 845} |
| `memTotalKb` | {'int': 845} |
| `otherPssKb` | {'int': 845} |
| `processes` | {'int': 845} |
| `pssFallbackProcesses` | {'int': 845} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
