# sandbox_telemetry_parse — 2026-10-12 19:29:50 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=650364 lines=1443
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1438 |
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
| `chromeBrowserPssKb` | {'int': 1438} |
| `chromeGpuPssKb` | {'int': 1438} |
| `chromeOtherPssKb` | {'int': 1438} |
| `chromeProcesses` | {'int': 1438} |
| `chromeProfiles` | {'int': 1438} |
| `chromeRendererMaxPssKb` | {'int': 1438} |
| `chromeRendererPssKb` | {'int': 1438} |
| `chromeRenderers` | {'int': 1438} |
| `chromeTabs` | {'int': 1438} |
| `chromeTabsProbedProfiles` | {'int': 1438} |
| `chromeUtilityPssKb` | {'int': 1438} |
| `desktopPssKb` | {'int': 1438} |
| `hostPssKb` | {'int': 1438} |
| `kind` | {'str': 1438} |
| `memAvailableKb` | {'int': 1438} |
| `memTotalKb` | {'int': 1438} |
| `otherPssKb` | {'int': 1438} |
| `processes` | {'int': 1438} |
| `pssFallbackProcesses` | {'int': 1438} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
