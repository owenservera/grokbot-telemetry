# sandbox_telemetry_parse — 2026-10-15 15:45:35 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=930586 lines=2063
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2058 |
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
| `chromeBrowserPssKb` | {'int': 2058} |
| `chromeGpuPssKb` | {'int': 2058} |
| `chromeOtherPssKb` | {'int': 2058} |
| `chromeProcesses` | {'int': 2058} |
| `chromeProfiles` | {'int': 2058} |
| `chromeRendererMaxPssKb` | {'int': 2058} |
| `chromeRendererPssKb` | {'int': 2058} |
| `chromeRenderers` | {'int': 2058} |
| `chromeTabs` | {'int': 2058} |
| `chromeTabsProbedProfiles` | {'int': 2058} |
| `chromeUtilityPssKb` | {'int': 2058} |
| `desktopPssKb` | {'int': 2058} |
| `hostPssKb` | {'int': 2058} |
| `kind` | {'str': 2058} |
| `memAvailableKb` | {'int': 2058} |
| `memTotalKb` | {'int': 2058} |
| `otherPssKb` | {'int': 2058} |
| `processes` | {'int': 2058} |
| `pssFallbackProcesses` | {'int': 2058} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
