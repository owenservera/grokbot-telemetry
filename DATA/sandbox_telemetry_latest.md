# sandbox_telemetry_parse — 2026-10-26 21:29:44 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=149871 lines=335
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 330 |
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
| `chromeBrowserPssKb` | {'int': 330} |
| `chromeGpuPssKb` | {'int': 330} |
| `chromeOtherPssKb` | {'int': 330} |
| `chromeProcesses` | {'int': 330} |
| `chromeProfiles` | {'int': 330} |
| `chromeRendererMaxPssKb` | {'int': 330} |
| `chromeRendererPssKb` | {'int': 330} |
| `chromeRenderers` | {'int': 330} |
| `chromeTabs` | {'int': 330} |
| `chromeTabsProbedProfiles` | {'int': 330} |
| `chromeUtilityPssKb` | {'int': 330} |
| `desktopPssKb` | {'int': 330} |
| `hostPssKb` | {'int': 330} |
| `kind` | {'str': 330} |
| `memAvailableKb` | {'int': 330} |
| `memTotalKb` | {'int': 330} |
| `otherPssKb` | {'int': 330} |
| `processes` | {'int': 330} |
| `pssFallbackProcesses` | {'int': 330} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
