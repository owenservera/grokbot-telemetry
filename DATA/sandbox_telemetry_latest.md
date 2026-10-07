# sandbox_telemetry_parse — 2026-10-07 08:22:26 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=906901 lines=1993
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1988 |
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
| `chromeBrowserPssKb` | {'int': 1988} |
| `chromeGpuPssKb` | {'int': 1988} |
| `chromeOtherPssKb` | {'int': 1988} |
| `chromeProcesses` | {'int': 1988} |
| `chromeProfiles` | {'int': 1988} |
| `chromeRendererMaxPssKb` | {'int': 1988} |
| `chromeRendererPssKb` | {'int': 1988} |
| `chromeRenderers` | {'int': 1988} |
| `chromeTabs` | {'int': 1988} |
| `chromeTabsProbedProfiles` | {'int': 1988} |
| `chromeUtilityPssKb` | {'int': 1988} |
| `desktopPssKb` | {'int': 1988} |
| `hostPssKb` | {'int': 1988} |
| `kind` | {'str': 1988} |
| `memAvailableKb` | {'int': 1988} |
| `memTotalKb` | {'int': 1988} |
| `otherPssKb` | {'int': 1988} |
| `processes` | {'int': 1988} |
| `pssFallbackProcesses` | {'int': 1988} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
