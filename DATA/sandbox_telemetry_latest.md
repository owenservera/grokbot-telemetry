# sandbox_telemetry_parse — 2026-10-14 07:54:27 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=173938 lines=389
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 384 |
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
| `chromeBrowserPssKb` | {'int': 384} |
| `chromeGpuPssKb` | {'int': 384} |
| `chromeOtherPssKb` | {'int': 384} |
| `chromeProcesses` | {'int': 384} |
| `chromeProfiles` | {'int': 384} |
| `chromeRendererMaxPssKb` | {'int': 384} |
| `chromeRendererPssKb` | {'int': 384} |
| `chromeRenderers` | {'int': 384} |
| `chromeTabs` | {'int': 384} |
| `chromeTabsProbedProfiles` | {'int': 384} |
| `chromeUtilityPssKb` | {'int': 384} |
| `desktopPssKb` | {'int': 384} |
| `hostPssKb` | {'int': 384} |
| `kind` | {'str': 384} |
| `memAvailableKb` | {'int': 384} |
| `memTotalKb` | {'int': 384} |
| `otherPssKb` | {'int': 384} |
| `processes` | {'int': 384} |
| `pssFallbackProcesses` | {'int': 384} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
