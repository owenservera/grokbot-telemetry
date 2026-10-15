# sandbox_telemetry_parse — 2026-10-16 01:37:47 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1156586 lines=2563
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2558 |
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
| `chromeBrowserPssKb` | {'int': 2558} |
| `chromeGpuPssKb` | {'int': 2558} |
| `chromeOtherPssKb` | {'int': 2558} |
| `chromeProcesses` | {'int': 2558} |
| `chromeProfiles` | {'int': 2558} |
| `chromeRendererMaxPssKb` | {'int': 2558} |
| `chromeRendererPssKb` | {'int': 2558} |
| `chromeRenderers` | {'int': 2558} |
| `chromeTabs` | {'int': 2558} |
| `chromeTabsProbedProfiles` | {'int': 2558} |
| `chromeUtilityPssKb` | {'int': 2558} |
| `desktopPssKb` | {'int': 2558} |
| `hostPssKb` | {'int': 2558} |
| `kind` | {'str': 2558} |
| `memAvailableKb` | {'int': 2558} |
| `memTotalKb` | {'int': 2558} |
| `otherPssKb` | {'int': 2558} |
| `processes` | {'int': 2558} |
| `pssFallbackProcesses` | {'int': 2558} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
