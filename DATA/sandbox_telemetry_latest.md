# sandbox_telemetry_parse — 2026-10-07 11:33:29 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=993541 lines=2183
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2178 |
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
| `chromeBrowserPssKb` | {'int': 2178} |
| `chromeGpuPssKb` | {'int': 2178} |
| `chromeOtherPssKb` | {'int': 2178} |
| `chromeProcesses` | {'int': 2178} |
| `chromeProfiles` | {'int': 2178} |
| `chromeRendererMaxPssKb` | {'int': 2178} |
| `chromeRendererPssKb` | {'int': 2178} |
| `chromeRenderers` | {'int': 2178} |
| `chromeTabs` | {'int': 2178} |
| `chromeTabsProbedProfiles` | {'int': 2178} |
| `chromeUtilityPssKb` | {'int': 2178} |
| `desktopPssKb` | {'int': 2178} |
| `hostPssKb` | {'int': 2178} |
| `kind` | {'str': 2178} |
| `memAvailableKb` | {'int': 2178} |
| `memTotalKb` | {'int': 2178} |
| `otherPssKb` | {'int': 2178} |
| `processes` | {'int': 2178} |
| `pssFallbackProcesses` | {'int': 2178} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
