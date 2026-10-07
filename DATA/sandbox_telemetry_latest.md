# sandbox_telemetry_parse — 2026-10-07 11:43:49 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=998101 lines=2193
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2188 |
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
| `chromeBrowserPssKb` | {'int': 2188} |
| `chromeGpuPssKb` | {'int': 2188} |
| `chromeOtherPssKb` | {'int': 2188} |
| `chromeProcesses` | {'int': 2188} |
| `chromeProfiles` | {'int': 2188} |
| `chromeRendererMaxPssKb` | {'int': 2188} |
| `chromeRendererPssKb` | {'int': 2188} |
| `chromeRenderers` | {'int': 2188} |
| `chromeTabs` | {'int': 2188} |
| `chromeTabsProbedProfiles` | {'int': 2188} |
| `chromeUtilityPssKb` | {'int': 2188} |
| `desktopPssKb` | {'int': 2188} |
| `hostPssKb` | {'int': 2188} |
| `kind` | {'str': 2188} |
| `memAvailableKb` | {'int': 2188} |
| `memTotalKb` | {'int': 2188} |
| `otherPssKb` | {'int': 2188} |
| `processes` | {'int': 2188} |
| `pssFallbackProcesses` | {'int': 2188} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
