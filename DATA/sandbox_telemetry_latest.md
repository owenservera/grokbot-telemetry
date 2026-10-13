# sandbox_telemetry_parse — 2026-10-13 11:30:01 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1044514 lines=2641
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2086 |
| `chrome_profile_sample` | 547 |
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
| `chromeBrowserPssKb` | {'int': 2086} |
| `chromeGpuPssKb` | {'int': 2086} |
| `chromeOtherPssKb` | {'int': 2086} |
| `chromeProcesses` | {'int': 2086} |
| `chromeProfiles` | {'int': 2086} |
| `chromeRendererMaxPssKb` | {'int': 2086} |
| `chromeRendererPssKb` | {'int': 2086} |
| `chromeRenderers` | {'int': 2086} |
| `chromeTabs` | {'int': 2086} |
| `chromeTabsProbedProfiles` | {'int': 2086} |
| `chromeUtilityPssKb` | {'int': 2086} |
| `desktopPssKb` | {'int': 2086} |
| `hostPssKb` | {'int': 2086} |
| `kind` | {'str': 2086} |
| `memAvailableKb` | {'int': 2086} |
| `memTotalKb` | {'int': 2086} |
| `otherPssKb` | {'int': 2086} |
| `processes` | {'int': 2086} |
| `pssFallbackProcesses` | {'int': 2086} |

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
| `cpuMillicores` | {'int': 546} |
| `display` | {'int': 547} |
| `kind` | {'str': 547} |
| `processes` | {'int': 547} |
| `pssKb` | {'int': 547} |
| `rendererMaxPssKb` | {'int': 547} |
| `renderers` | {'int': 547} |
| `tabs` | {'int': 547} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
