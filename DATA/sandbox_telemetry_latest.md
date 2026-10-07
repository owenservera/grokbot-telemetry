# sandbox_telemetry_parse — 2026-10-07 14:29:08 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1073341 lines=2358
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2353 |
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
| `chromeBrowserPssKb` | {'int': 2353} |
| `chromeGpuPssKb` | {'int': 2353} |
| `chromeOtherPssKb` | {'int': 2353} |
| `chromeProcesses` | {'int': 2353} |
| `chromeProfiles` | {'int': 2353} |
| `chromeRendererMaxPssKb` | {'int': 2353} |
| `chromeRendererPssKb` | {'int': 2353} |
| `chromeRenderers` | {'int': 2353} |
| `chromeTabs` | {'int': 2353} |
| `chromeTabsProbedProfiles` | {'int': 2353} |
| `chromeUtilityPssKb` | {'int': 2353} |
| `desktopPssKb` | {'int': 2353} |
| `hostPssKb` | {'int': 2353} |
| `kind` | {'str': 2353} |
| `memAvailableKb` | {'int': 2353} |
| `memTotalKb` | {'int': 2353} |
| `otherPssKb` | {'int': 2353} |
| `processes` | {'int': 2353} |
| `pssFallbackProcesses` | {'int': 2353} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
