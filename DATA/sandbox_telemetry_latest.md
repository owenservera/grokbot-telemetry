# sandbox_telemetry_parse — 2026-10-15 23:14:23 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1102346 lines=2443
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2438 |
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
| `chromeBrowserPssKb` | {'int': 2438} |
| `chromeGpuPssKb` | {'int': 2438} |
| `chromeOtherPssKb` | {'int': 2438} |
| `chromeProcesses` | {'int': 2438} |
| `chromeProfiles` | {'int': 2438} |
| `chromeRendererMaxPssKb` | {'int': 2438} |
| `chromeRendererPssKb` | {'int': 2438} |
| `chromeRenderers` | {'int': 2438} |
| `chromeTabs` | {'int': 2438} |
| `chromeTabsProbedProfiles` | {'int': 2438} |
| `chromeUtilityPssKb` | {'int': 2438} |
| `desktopPssKb` | {'int': 2438} |
| `hostPssKb` | {'int': 2438} |
| `kind` | {'str': 2438} |
| `memAvailableKb` | {'int': 2438} |
| `memTotalKb` | {'int': 2438} |
| `otherPssKb` | {'int': 2438} |
| `processes` | {'int': 2438} |
| `pssFallbackProcesses` | {'int': 2438} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
