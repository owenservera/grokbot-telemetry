# sandbox_telemetry_parse — 2026-10-15 14:08:59 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=894426 lines=1983
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1978 |
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
| `chromeBrowserPssKb` | {'int': 1978} |
| `chromeGpuPssKb` | {'int': 1978} |
| `chromeOtherPssKb` | {'int': 1978} |
| `chromeProcesses` | {'int': 1978} |
| `chromeProfiles` | {'int': 1978} |
| `chromeRendererMaxPssKb` | {'int': 1978} |
| `chromeRendererPssKb` | {'int': 1978} |
| `chromeRenderers` | {'int': 1978} |
| `chromeTabs` | {'int': 1978} |
| `chromeTabsProbedProfiles` | {'int': 1978} |
| `chromeUtilityPssKb` | {'int': 1978} |
| `desktopPssKb` | {'int': 1978} |
| `hostPssKb` | {'int': 1978} |
| `kind` | {'str': 1978} |
| `memAvailableKb` | {'int': 1978} |
| `memTotalKb` | {'int': 1978} |
| `otherPssKb` | {'int': 1978} |
| `processes` | {'int': 1978} |
| `pssFallbackProcesses` | {'int': 1978} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
