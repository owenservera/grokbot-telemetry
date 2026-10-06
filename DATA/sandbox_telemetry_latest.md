# sandbox_telemetry_parse — 2026-10-06 02:40:34 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=103250 lines=231
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 226 |
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
| `chromeBrowserPssKb` | {'int': 226} |
| `chromeGpuPssKb` | {'int': 226} |
| `chromeOtherPssKb` | {'int': 226} |
| `chromeProcesses` | {'int': 226} |
| `chromeProfiles` | {'int': 226} |
| `chromeRendererMaxPssKb` | {'int': 226} |
| `chromeRendererPssKb` | {'int': 226} |
| `chromeRenderers` | {'int': 226} |
| `chromeTabs` | {'int': 226} |
| `chromeTabsProbedProfiles` | {'int': 226} |
| `chromeUtilityPssKb` | {'int': 226} |
| `desktopPssKb` | {'int': 226} |
| `hostPssKb` | {'int': 226} |
| `kind` | {'str': 226} |
| `memAvailableKb` | {'int': 226} |
| `memTotalKb` | {'int': 226} |
| `otherPssKb` | {'int': 226} |
| `processes` | {'int': 226} |
| `pssFallbackProcesses` | {'int': 226} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
