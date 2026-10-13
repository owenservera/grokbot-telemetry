# sandbox_telemetry_parse — 2026-10-13 03:41:35 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=793105 lines=1851
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1691 |
| `chrome_profile_sample` | 152 |
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
| `chromeBrowserPssKb` | {'int': 1691} |
| `chromeGpuPssKb` | {'int': 1691} |
| `chromeOtherPssKb` | {'int': 1691} |
| `chromeProcesses` | {'int': 1691} |
| `chromeProfiles` | {'int': 1691} |
| `chromeRendererMaxPssKb` | {'int': 1691} |
| `chromeRendererPssKb` | {'int': 1691} |
| `chromeRenderers` | {'int': 1691} |
| `chromeTabs` | {'int': 1691} |
| `chromeTabsProbedProfiles` | {'int': 1691} |
| `chromeUtilityPssKb` | {'int': 1691} |
| `desktopPssKb` | {'int': 1691} |
| `hostPssKb` | {'int': 1691} |
| `kind` | {'str': 1691} |
| `memAvailableKb` | {'int': 1691} |
| `memTotalKb` | {'int': 1691} |
| `otherPssKb` | {'int': 1691} |
| `processes` | {'int': 1691} |
| `pssFallbackProcesses` | {'int': 1691} |

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
| `cpuMillicores` | {'int': 151} |
| `display` | {'int': 152} |
| `kind` | {'str': 152} |
| `processes` | {'int': 152} |
| `pssKb` | {'int': 152} |
| `rendererMaxPssKb` | {'int': 152} |
| `renderers` | {'int': 152} |
| `tabs` | {'int': 152} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
