# sandbox_telemetry_parse — 2026-10-14 18:13:35 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=415758 lines=924
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 919 |
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
| `chromeBrowserPssKb` | {'int': 919} |
| `chromeGpuPssKb` | {'int': 919} |
| `chromeOtherPssKb` | {'int': 919} |
| `chromeProcesses` | {'int': 919} |
| `chromeProfiles` | {'int': 919} |
| `chromeRendererMaxPssKb` | {'int': 919} |
| `chromeRendererPssKb` | {'int': 919} |
| `chromeRenderers` | {'int': 919} |
| `chromeTabs` | {'int': 919} |
| `chromeTabsProbedProfiles` | {'int': 919} |
| `chromeUtilityPssKb` | {'int': 919} |
| `desktopPssKb` | {'int': 919} |
| `hostPssKb` | {'int': 919} |
| `kind` | {'str': 919} |
| `memAvailableKb` | {'int': 919} |
| `memTotalKb` | {'int': 919} |
| `otherPssKb` | {'int': 919} |
| `processes` | {'int': 919} |
| `pssFallbackProcesses` | {'int': 919} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
