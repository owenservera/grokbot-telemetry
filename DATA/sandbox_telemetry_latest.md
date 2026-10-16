# sandbox_telemetry_parse — 2026-10-16 15:51:52 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=597458 lines=2233
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1476 |
| `memory_sample` | 748 |
| `boot_stage` | 3 |
| `chrome_launch` | 2 |
| `cookie_persist` | 2 |
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
| `chromeBrowserPssKb` | {'int': 748} |
| `chromeGpuPssKb` | {'int': 748} |
| `chromeOtherPssKb` | {'int': 748} |
| `chromeProcesses` | {'int': 748} |
| `chromeProfiles` | {'int': 748} |
| `chromeRendererMaxPssKb` | {'int': 748} |
| `chromeRendererPssKb` | {'int': 748} |
| `chromeRenderers` | {'int': 748} |
| `chromeTabs` | {'int': 748} |
| `chromeTabsProbedProfiles` | {'int': 748} |
| `chromeUtilityPssKb` | {'int': 748} |
| `desktopPssKb` | {'int': 748} |
| `hostPssKb` | {'int': 748} |
| `kind` | {'str': 748} |
| `memAvailableKb` | {'int': 748} |
| `memTotalKb` | {'int': 748} |
| `otherPssKb` | {'int': 748} |
| `processes` | {'int': 748} |
| `pssFallbackProcesses` | {'int': 748} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 2} |
| `display` | {'int': 2} |
| `durationMs` | {'int': 2} |
| `kind` | {'str': 2} |
| `launcher` | {'int': 2} |
| `launcherSource` | {'str': 2} |
| `mode` | {'str': 2} |
| `outcome` | {'str': 2} |

### `cookie_persist`

| key | types |
|-----|-------|
| `attempts` | {'int': 1} |
| `injected` | {'int': 1} |
| `kind` | {'str': 2} |
| `missingAfter` | {'int': 1} |
| `outcome` | {'str': 2} |
| `phase` | {'str': 2} |
| `seedCookies` | {'int': 2} **REDACT values** |

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 1473} |
| `display` | {'int': 1476} |
| `kind` | {'str': 1476} |
| `processes` | {'int': 1476} |
| `pssKb` | {'int': 1476} |
| `rendererMaxPssKb` | {'int': 1476} |
| `renderers` | {'int': 1476} |
| `tabs` | {'int': 1475} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
