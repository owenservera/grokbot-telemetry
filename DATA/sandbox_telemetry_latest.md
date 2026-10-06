# sandbox_telemetry_parse — 2026-10-06 16:07:02 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=467138 lines=1029
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1024 |
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
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 1024} |
| `chromeGpuPssKb` | {'int': 1024} |
| `chromeOtherPssKb` | {'int': 1024} |
| `chromeProcesses` | {'int': 1024} |
| `chromeProfiles` | {'int': 1024} |
| `chromeRendererMaxPssKb` | {'int': 1024} |
| `chromeRendererPssKb` | {'int': 1024} |
| `chromeRenderers` | {'int': 1024} |
| `chromeTabs` | {'int': 1024} |
| `chromeTabsProbedProfiles` | {'int': 1024} |
| `chromeUtilityPssKb` | {'int': 1024} |
| `desktopPssKb` | {'int': 1024} |
| `hostPssKb` | {'int': 1024} |
| `kind` | {'str': 1024} |
| `memAvailableKb` | {'int': 1024} |
| `memTotalKb` | {'int': 1024} |
| `otherPssKb` | {'int': 1024} |
| `processes` | {'int': 1024} |
| `pssFallbackProcesses` | {'int': 1024} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
