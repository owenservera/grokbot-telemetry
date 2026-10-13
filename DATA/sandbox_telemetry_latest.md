# sandbox_telemetry_parse — 2026-10-13 13:17:25 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1103251 lines=2825
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2178 |
| `chrome_profile_sample` | 639 |
| `boot_stage` | 3 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `chrome_launch` | 1 |

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

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `display` | {'int': 1} |
| `durationMs` | {'int': 1} |
| `kind` | {'str': 1} |
| `launcher` | {'int': 1} |
| `launcherSource` | {'str': 1} |
| `mode` | {'str': 1} |
| `outcome` | {'str': 1} |

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
| `cpuMillicores` | {'int': 638} |
| `display` | {'int': 639} |
| `kind` | {'str': 639} |
| `processes` | {'int': 639} |
| `pssKb` | {'int': 639} |
| `rendererMaxPssKb` | {'int': 639} |
| `renderers` | {'int': 639} |
| `tabs` | {'int': 639} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
