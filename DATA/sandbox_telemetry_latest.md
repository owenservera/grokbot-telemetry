# sandbox_telemetry_parse — 2026-10-13 12:53:32 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1089203 lines=2781
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2156 |
| `chrome_profile_sample` | 617 |
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
| `chromeBrowserPssKb` | {'int': 2156} |
| `chromeGpuPssKb` | {'int': 2156} |
| `chromeOtherPssKb` | {'int': 2156} |
| `chromeProcesses` | {'int': 2156} |
| `chromeProfiles` | {'int': 2156} |
| `chromeRendererMaxPssKb` | {'int': 2156} |
| `chromeRendererPssKb` | {'int': 2156} |
| `chromeRenderers` | {'int': 2156} |
| `chromeTabs` | {'int': 2156} |
| `chromeTabsProbedProfiles` | {'int': 2156} |
| `chromeUtilityPssKb` | {'int': 2156} |
| `desktopPssKb` | {'int': 2156} |
| `hostPssKb` | {'int': 2156} |
| `kind` | {'str': 2156} |
| `memAvailableKb` | {'int': 2156} |
| `memTotalKb` | {'int': 2156} |
| `otherPssKb` | {'int': 2156} |
| `processes` | {'int': 2156} |
| `pssFallbackProcesses` | {'int': 2156} |

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
| `cpuMillicores` | {'int': 616} |
| `display` | {'int': 617} |
| `kind` | {'str': 617} |
| `processes` | {'int': 617} |
| `pssKb` | {'int': 617} |
| `rendererMaxPssKb` | {'int': 617} |
| `renderers` | {'int': 617} |
| `tabs` | {'int': 617} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
