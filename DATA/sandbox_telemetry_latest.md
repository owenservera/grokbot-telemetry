# sandbox_telemetry_parse — 2026-10-15 19:59:42 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1028670 lines=2280
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2275 |
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
| `chromeBrowserPssKb` | {'int': 2275} |
| `chromeGpuPssKb` | {'int': 2275} |
| `chromeOtherPssKb` | {'int': 2275} |
| `chromeProcesses` | {'int': 2275} |
| `chromeProfiles` | {'int': 2275} |
| `chromeRendererMaxPssKb` | {'int': 2275} |
| `chromeRendererPssKb` | {'int': 2275} |
| `chromeRenderers` | {'int': 2275} |
| `chromeTabs` | {'int': 2275} |
| `chromeTabsProbedProfiles` | {'int': 2275} |
| `chromeUtilityPssKb` | {'int': 2275} |
| `desktopPssKb` | {'int': 2275} |
| `hostPssKb` | {'int': 2275} |
| `kind` | {'str': 2275} |
| `memAvailableKb` | {'int': 2275} |
| `memTotalKb` | {'int': 2275} |
| `otherPssKb` | {'int': 2275} |
| `processes` | {'int': 2275} |
| `pssFallbackProcesses` | {'int': 2275} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
