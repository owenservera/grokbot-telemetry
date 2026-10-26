# sandbox_telemetry_parse — 2026-10-26 18:21:37 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=68784 lines=156
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 151 |
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
| `chromeBrowserPssKb` | {'int': 151} |
| `chromeGpuPssKb` | {'int': 151} |
| `chromeOtherPssKb` | {'int': 151} |
| `chromeProcesses` | {'int': 151} |
| `chromeProfiles` | {'int': 151} |
| `chromeRendererMaxPssKb` | {'int': 151} |
| `chromeRendererPssKb` | {'int': 151} |
| `chromeRenderers` | {'int': 151} |
| `chromeTabs` | {'int': 151} |
| `chromeTabsProbedProfiles` | {'int': 151} |
| `chromeUtilityPssKb` | {'int': 151} |
| `desktopPssKb` | {'int': 151} |
| `hostPssKb` | {'int': 151} |
| `kind` | {'str': 151} |
| `memAvailableKb` | {'int': 151} |
| `memTotalKb` | {'int': 151} |
| `otherPssKb` | {'int': 151} |
| `processes` | {'int': 151} |
| `pssFallbackProcesses` | {'int': 151} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
